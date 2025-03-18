import { TooltipRenderProps } from "react-joyride";

export default function TourTooltip({
  step,
  index,
  continuous,
  backProps,
  primaryProps,
  closeProps,
}: TooltipRenderProps) {
  return (
    <div className="flex flex-col bg-white rounded-lg p-4 space-y-3 shadow-md w-[400px]">
      <div className="py-3 px-1">
        <p className="flex text-left text-md">
          {step.content}
        </p>
      </div>
      <div className={`flex ${index === 0 ? 'justify-end' : 'justify-between'}`}>
        {index > 0 && (
          <button {...backProps} className="btn-outline">
            Back
          </button>
        )}
        {!step.hideFooter && continuous && (
          <button {...primaryProps} className="btn-primary">
            Next
          </button>
        )}
        {!step.hideFooter && !continuous && (
          <button {...closeProps} className="btn-primary">
            Close
          </button>
        )}
      </div>
    </div>
  );
}
